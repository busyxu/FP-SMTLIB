(declare-fun nu1_ack!648 () (_ BitVec 64))
(declare-fun nu2_ack!649 () (_ BitVec 64))
(declare-fun x_ack!650 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!649)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!648)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!650)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!649)
               ((_ to_fp 11 53) nu1_ack!648))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!650)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!649)
                                   ((_ to_fp 11 53) nu1_ack!648))
                           ((_ to_fp 11 53) x_ack!650)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!650)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!649)
                                   ((_ to_fp 11 53) nu1_ack!648))
                           ((_ to_fp 11 53) x_ack!650)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!648)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!649)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!648)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
