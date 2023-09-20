(declare-fun b_ack!387 () (_ BitVec 64))
(declare-fun a_ack!388 () (_ BitVec 32))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!388) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!388)))
(assert (= #x00000000 a_ack!388))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!387))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!387))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!387)
                           ((_ to_fp 11 53) b_ack!387))
                   ((_ to_fp 11 53) #x3e38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 ((_ to_fp 11 53) #x3ea937e11175f095))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!387)
                           ((_ to_fp 11 53) b_ack!387))
                   ((_ to_fp 11 53) #x3e38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ea937e11175f095))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!387)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           ((_ to_fp 11 53) #x3e38d48ed61d7aab)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!387))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!6)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         (fp.abs a!7))
                 ((_ to_fp 11 53) #x3cc0000000000000))
         (fp.abs a!7)))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!387)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           ((_ to_fp 11 53) #x3e38d48ed61d7aab)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!387))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!6)))
  (not (fp.eq (fp.abs (fp.abs a!7)) ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!387)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           ((_ to_fp 11 53) #x3e38d48ed61d7aab)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!387)
                                   ((_ to_fp 11 53) b_ack!387))
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!387))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!6)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         (fp.abs a!7))
                 (fp.abs a!7))
         ((_ to_fp 11 53) #x3cc0000000000000)))))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!388 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!388))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!387))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!387))
       ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!387))))))
  (FPCHECK_FDIV_INVALID
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.abs ((_ to_fp 11 53) b_ack!387))))))

(check-sat)
(exit)
