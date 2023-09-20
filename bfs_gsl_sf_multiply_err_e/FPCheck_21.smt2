(declare-fun a_ack!122 () (_ BitVec 64))
(declare-fun c_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun d_ack!121 () (_ BitVec 64))
(declare-fun b_ack!119 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!122) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!120) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) c_ack!120)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!121)
                                   ((_ to_fp 11 53) a_ack!122))))))
  (FPCHECK_FADD_OVERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)
