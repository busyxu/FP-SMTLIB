(declare-fun a_ack!1662 () (_ BitVec 32))
(declare-fun b_ack!1661 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1662 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1661) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1661) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1662)))
(assert (not (= #x00000001 a_ack!1662)))
(assert (= #x00000002 a_ack!1662))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1661) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1661))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1661))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1661)
                           ((_ to_fp 11 53) b_ack!1661))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 ((_ to_fp 11 53) #x3c9e76d4fa744d95))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1661)
                           ((_ to_fp 11 53) b_ack!1661))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3c9e76d4fa744d95))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1661)
                                  ((_ to_fp 11 53) b_ack!1661)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1661)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1661)
                                   ((_ to_fp 11 53) b_ack!1661))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1661)
                           ((_ to_fp 11 53) b_ack!1661)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1661)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1661)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1661)
                                   ((_ to_fp 11 53) b_ack!1661))
                           a!1)
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1661)
                 ((_ to_fp 11 53) b_ack!1661))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1661)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
  (FPCHECK_FADD_OVERFLOW
    #xbd23fdfbc45c52ea
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1661)
                    ((_ to_fp 11 53) b_ack!1661))
            a!1))))

(check-sat)
(exit)
