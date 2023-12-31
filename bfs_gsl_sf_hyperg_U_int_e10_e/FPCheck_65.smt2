(declare-fun c_ack!385 () (_ BitVec 64))
(declare-fun b_ack!384 () (_ BitVec 32))
(declare-fun a_ack!386 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!385) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!385) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!385) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!386 b_ack!384)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!384)
       (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven b_ack!384))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!384)
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!386)
       (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven a_ack!386))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!386)
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!386)
        ((_ to_fp 11 53) roundNearestTiesToEven b_ack!384)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!386))
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!384)))

(check-sat)
(exit)
