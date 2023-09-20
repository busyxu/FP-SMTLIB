(declare-fun a_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!131) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!131))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!131))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!131)
                       ((_ to_fp 11 53) #x4000000000000000))
               ((_ to_fp 11 53) a_ack!131))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!131)
                       ((_ to_fp 11 53) #x4000000000000000))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!131)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) a_ack!131))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FDIV_ZERO
    a!1
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!131)
            ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
