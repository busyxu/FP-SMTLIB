(declare-fun b_ack!3353 () (_ BitVec 64))
(declare-fun a_ack!3354 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!3354) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!3354)))
(assert (not (= #x00000000 a_ack!3354)))
(assert (= #x00000001 a_ack!3354))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3353))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3353))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3354 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!3354)))
(assert (= #x00000001 a_ack!3354))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3353))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3353))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3354))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3354))
       #x0000000000000319))
(assert (bvsle #x00000001 a_ack!3354))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 a_ack!3354)))
                   ((_ to_fp 11 53) b_ack!3353)))
      (a!2 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!3353))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3353))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!2))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3353))
                           (fp.abs ((_ to_fp 11 53) b_ack!3353))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!4))))))

(check-sat)
(exit)
