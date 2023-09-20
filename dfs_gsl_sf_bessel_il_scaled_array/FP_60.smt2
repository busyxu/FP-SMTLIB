(declare-fun b_ack!783 () (_ BitVec 64))
(declare-fun a_ack!784 () (_ BitVec 32))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!783) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!783) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!784) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!783) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!784)))
(assert (not (= #x00000000 a_ack!784)))
(assert (not (= #x00000001 a_ack!784)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!783)
                       ((_ to_fp 11 53) b_ack!783))
               ((_ to_fp 11 53) b_ack!783))
       ((_ to_fp 11 53) b_ack!783)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!783)
                       ((_ to_fp 11 53) b_ack!783))
               ((_ to_fp 11 53) b_ack!783))
       ((_ to_fp 11 53) b_ack!783)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!784))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!783)
                      ((_ to_fp 11 53) b_ack!783))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (bvslt (bvadd #x00000001 a_ack!784) #x00000096))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!783)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!783)))
       ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!783))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         (CF_exp a!1))
                 (CF_exp a!1))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!783))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         (CF_exp a!1)))
         (CF_exp a!1))))

(check-sat)
(exit)
