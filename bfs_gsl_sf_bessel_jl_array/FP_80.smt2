(declare-fun a_ack!899 () (_ BitVec 32))
(declare-fun b_ack!898 () (_ BitVec 64))
(assert (not (bvslt a_ack!899 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!899) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!899)))
(assert (not (= #x00000000 a_ack!899)))
(assert (not (= #x00000001 a_ack!899)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!898)
                 ((_ to_fp 11 53) b_ack!898))
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4005bf0a8b145769)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvadd #x00000001 a_ack!899))
                          ((_ to_fp 11 53) #x3fe0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvadd #x00000001 a_ack!899))
                          ((_ to_fp 11 53) #x3fe0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvadd #x00000001 a_ack!899))
                          ((_ to_fp 11 53) #x3fe0000000000000))
                  ((_ to_fp 11 53) #x41dfffffff800000))))
  (not a!1)))

(check-sat)
(exit)
