(declare-fun b_ack!119 () (_ BitVec 64))
(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!119) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!119) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!120)
                       ((_ to_fp 11 53) b_ack!119)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!120)
                           ((_ to_fp 11 53) b_ack!119))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!120)
                           ((_ to_fp 11 53) b_ack!119)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!120)
                                   ((_ to_fp 11 53) b_ack!119))
                           a!1)
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW a!2 #x4059000000000000))))

(check-sat)
(exit)
