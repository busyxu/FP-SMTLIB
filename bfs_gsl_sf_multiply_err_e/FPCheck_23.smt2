(declare-fun a_ack!138 () (_ BitVec 64))
(declare-fun c_ack!136 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun d_ack!137 () (_ BitVec 64))
(declare-fun b_ack!135 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!136) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!135)
                                   ((_ to_fp 11 53) c_ack!136)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!137)
                                   ((_ to_fp 11 53) a_ack!138))))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!1)))

(check-sat)
(exit)
