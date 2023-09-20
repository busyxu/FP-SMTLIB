(declare-fun c_ack!13 () (_ BitVec 64))
(declare-fun b_ack!12 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!14 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!13) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!12)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!13) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!14))
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!12)))

(check-sat)
(exit)
