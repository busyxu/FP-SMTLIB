(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!35)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!35))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!35)
                       ((_ to_fp 11 53) a_ack!35))
               ((_ to_fp 11 53) a_ack!35))
       ((_ to_fp 11 53) a_ack!35)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!35))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!35)
                       ((_ to_fp 11 53) a_ack!35))
               ((_ to_fp 11 53) a_ack!35))
       ((_ to_fp 11 53) a_ack!35)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!35)
                                   ((_ to_fp 11 53) a_ack!35))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!35)
                                   ((_ to_fp 11 53) a_ack!35)))
                   ((_ to_fp 11 53) #x4028000000000000))))
  (FPCHECK_FDIV_OVERFLOW (fp.abs a!1) a_ack!35)))

(check-sat)
(exit)
