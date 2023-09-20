(declare-fun b_ack!3369 () (_ BitVec 64))
(declare-fun a_ack!3370 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!3370) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!3370)))
(assert (not (= #x00000000 a_ack!3370)))
(assert (= #x00000001 a_ack!3370))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3369))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3369))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3370 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!3370)))
(assert (= #x00000001 a_ack!3370))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3369))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3369))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3370))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3370))
       #x0000000000000319))
(assert (bvsle #x00000001 a_ack!3370))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!3369)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3369))
                           (fp.abs ((_ to_fp 11 53) b_ack!3369)))
                   (fp.abs ((_ to_fp 11 53) b_ack!3369))))
      (a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 a_ack!3370)))
                   ((_ to_fp 11 53) b_ack!3369))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3369)
                                   ((_ to_fp 11 53) b_ack!3369)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!3369)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3369))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (fp.sub roundNearestTiesToEven a!2 a!3))
                           a!4)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3369))
                           (fp.abs ((_ to_fp 11 53) b_ack!3369))))))
  (FPCHECK_FADD_UNDERFLOW
    a!5
    (fp.mul roundNearestTiesToEven
            a!6
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!8)))))))

(check-sat)
(exit)
