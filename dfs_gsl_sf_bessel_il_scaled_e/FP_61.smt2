(declare-fun b_ack!850 () (_ BitVec 64))
(declare-fun a_ack!851 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!850) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!851 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!850) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!851)))
(assert (not (= #x00000001 a_ack!851)))
(assert (not (= #x00000002 a_ack!851)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!850))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!850)
                       ((_ to_fp 11 53) b_ack!850))
               ((_ to_fp 11 53) b_ack!850))
       ((_ to_fp 11 53) b_ack!850)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!850))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!850)
                       ((_ to_fp 11 53) b_ack!850))
               ((_ to_fp 11 53) b_ack!850))
       ((_ to_fp 11 53) b_ack!850)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!851)
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x4005bf0a8b145769))
                          ((_ to_fp 11 53) #x4005bf0a8b145769))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!851)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!851)
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4005bf0a8b145769)))
         ((_ to_fp 11 53) #x4005bf0a8b145769))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!851)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!850)
                      ((_ to_fp 11 53) b_ack!850))
              a!1))))
(assert (bvslt a_ack!851 #x00000096))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!850))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!850)))
       ((_ to_fp 11 53) #x3fc999999999999a)))

(check-sat)
(exit)
