(declare-fun a_ack!2433 () (_ BitVec 32))
(declare-fun b_ack!2432 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2433 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!2433) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!2433)))
(assert (not (= #x00000000 a_ack!2433)))
(assert (= #x00000001 a_ack!2433))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2432))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2432))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2432)
                           ((_ to_fp 11 53) b_ack!2432))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 ((_ to_fp 11 53) #x3c9e76d4fa744d95))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2432)
                           ((_ to_fp 11 53) b_ack!2432))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3c9e76d4fa744d95))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2432)
                                   ((_ to_fp 11 53) b_ack!2432))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!2432)
            ((_ to_fp 11 53) b_ack!2432))
    a!1)))

(check-sat)
(exit)
