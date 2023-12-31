(declare-fun x_ack!7445 () (_ BitVec 64))
(declare-fun nu1_ack!7443 () (_ BitVec 64))
(declare-fun nu2_ack!7444 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!7445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!7445) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7445) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!7443) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!7444) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!7443) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!7444) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!7443) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!7444) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!7443) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!7444) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!7443) ((_ to_fp 11 53) nu2_ack!7444))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!7443) ((_ to_fp 11 53) nu2_ack!7444))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!7444)
                    ((_ to_fp 11 53) nu2_ack!7444))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7443)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!7443)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!7443)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7443)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7443)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7443)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7443)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x40142eb8f3a779b9))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7443)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))
                   ((_ to_fp 11 53) #x40142eb8f3a779b9))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!7443)
                 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7443)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7443)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7443)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7443)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7443)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!1)))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!7443)
                 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!7443)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7443)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7443)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7443)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7443)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!2 a!1))))
(assert (FPCHECK_FADD_UNDERFLOW
  #xbf9a901651b2b525
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fa0163058fbcc17)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) nu1_ack!7443)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
