(declare-fun nu1_ack!534 () (_ BitVec 64))
(declare-fun nu2_ack!535 () (_ BitVec 64))
(declare-fun x_ack!536 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!535)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!534)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!536)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!535)
               ((_ to_fp 11 53) nu1_ack!534))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!536)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!535)
                                   ((_ to_fp 11 53) nu1_ack!534))
                           ((_ to_fp 11 53) x_ack!536)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!536)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!535)
                                   ((_ to_fp 11 53) nu1_ack!534))
                           ((_ to_fp 11 53) x_ack!536)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!534)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!535)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!534)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!535)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!534)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!535)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!534)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!535)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!534)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!535)
                    ((_ to_fp 11 53) #x4000000000000000)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!534)
               ((_ to_fp 11 53) #x4000000000000000))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!535)
               ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!534)
                       ((_ to_fp 11 53) #x4000000000000000))
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) nu2_ack!535)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu1_ack!534)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!534)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!534)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!534)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!534)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_OVERFLOW a!4 #x3c916ede756b86ef))))))

(check-sat)
(exit)
