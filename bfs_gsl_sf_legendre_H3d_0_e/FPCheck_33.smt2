(declare-fun b_ack!140 () (_ BitVec 64))
(declare-fun a_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!141)
                       ((_ to_fp 11 53) b_ack!140)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!141)
                           ((_ to_fp 11 53) b_ack!140))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!141)
                           ((_ to_fp 11 53) b_ack!140)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!141)
                                   ((_ to_fp 11 53) b_ack!140))
                           a!1)
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW a!2 #x4059000000000000))))

(check-sat)
(exit)
