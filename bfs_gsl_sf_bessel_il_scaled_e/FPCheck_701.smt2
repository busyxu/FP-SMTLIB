(declare-fun b_ack!2482 () (_ BitVec 64))
(declare-fun a_ack!2483 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2482) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2483 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2482) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!2483)))
(assert (not (= #x00000001 a_ack!2483)))
(assert (not (= #x00000002 a_ack!2483)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2482)
                       ((_ to_fp 11 53) b_ack!2482))
               ((_ to_fp 11 53) b_ack!2482))
       ((_ to_fp 11 53) b_ack!2482)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2482)
                       ((_ to_fp 11 53) b_ack!2482))
               ((_ to_fp 11 53) b_ack!2482))
       ((_ to_fp 11 53) b_ack!2482)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2483)
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
                                     a_ack!2483)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2483)
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
                                     a_ack!2483)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!2482)
                      ((_ to_fp 11 53) b_ack!2482))
              a!1))))
(assert (bvslt a_ack!2483 #x00000096))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!2482)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!2482)))
                  ((_ to_fp 11 53) #x403205966f2b4f12))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2483))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2483))
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!2482))
                           a!1)
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!2482))
                           a!2))))
  (FPCHECK_FADD_OVERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
