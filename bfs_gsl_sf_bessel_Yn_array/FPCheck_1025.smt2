(declare-fun a_ack!4693 () (_ BitVec 32))
(declare-fun b_ack!4691 () (_ BitVec 32))
(declare-fun c_ack!4692 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!4693 #x00000000)))
(assert (not (bvslt b_ack!4691 a_ack!4693)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4693 #x00000000)))
(assert (not (= #x00000000 a_ack!4693)))
(assert (not (= #x00000001 a_ack!4693)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4692) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!4692))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!4693 a_ack!4693))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!4693))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4692)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4693))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!4692)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4692)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4692)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4692)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4692)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!4692)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!4693)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4692)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4693)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4692)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3fff14ce15b24728)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4692)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4693))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fff14ce15b24728)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4692)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4693))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!4692)
                 ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4693)))))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4692)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4693))))))
  (FPCHECK_FINVALID_POW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff8000000000000)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fee299c2b648e50)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff8000000000000)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fee299c2b648e50))))))

(check-sat)
(exit)
