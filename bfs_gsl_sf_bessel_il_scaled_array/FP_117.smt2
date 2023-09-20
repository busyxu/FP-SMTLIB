(declare-fun b_ack!1727 () (_ BitVec 64))
(declare-fun a_ack!1728 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1727) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1727) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1728) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1727) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!1728)))
(assert (not (= #x00000000 a_ack!1728)))
(assert (not (= #x00000001 a_ack!1728)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1727))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1727)
                       ((_ to_fp 11 53) b_ack!1727))
               ((_ to_fp 11 53) b_ack!1727))
       ((_ to_fp 11 53) b_ack!1727)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1727))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1727)
                       ((_ to_fp 11 53) b_ack!1727))
               ((_ to_fp 11 53) b_ack!1727))
       ((_ to_fp 11 53) b_ack!1727)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1728))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!1727)
                      ((_ to_fp 11 53) b_ack!1727))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (bvslt (bvadd #x00000001 a_ack!1728) #x00000096))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1727))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1727)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1727)))
                  ((_ to_fp 11 53) #x403205966f2b4f12))))
  (not a!1)))

(check-sat)
(exit)
