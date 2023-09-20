(declare-fun b_ack!685 () (_ BitVec 64))
(declare-fun alpha_ack!686 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!685) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!686)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) alpha_ack!686)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha_ack!686)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000))
                 a!1)
         ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha_ack!686)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000))
                 ((_ to_fp 11 53) #x3fe0000000000000))
         a!1)))

(check-sat)
(exit)
