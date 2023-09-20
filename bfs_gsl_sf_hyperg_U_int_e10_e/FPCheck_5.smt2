(declare-fun c_ack!22 () (_ BitVec 64))
(declare-fun b_ack!21 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!23 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!22) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!21)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!22) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!23))
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!21)))

(check-sat)
(exit)
