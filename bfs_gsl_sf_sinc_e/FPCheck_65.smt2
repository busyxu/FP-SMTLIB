(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x4059000000000000))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.abs ((_ to_fp 11 53) a_ack!87))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f20000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.abs ((_ to_fp 11 53) a_ack!87))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x3fe921fb54442d18)))

(check-sat)
(exit)
