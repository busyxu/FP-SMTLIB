(declare-fun a_ack!295 () (_ BitVec 32))
(declare-fun b_ack!294 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!295 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!295) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!295)))
(assert (= #x00000000 a_ack!295))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!294))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!294))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!294)
                           ((_ to_fp 11 53) b_ack!294))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 ((_ to_fp 11 53) #x3ea937e11175f095))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!294)
                           ((_ to_fp 11 53) b_ack!294))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ea937e11175f095))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           ((_ to_fp 11 53) #xbe38d48ed61d7aab)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!4))))
(let ((a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!5))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         a!6)
                 ((_ to_fp 11 53) #x3cc0000000000000))
         a!6))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           ((_ to_fp 11 53) #xbe38d48ed61d7aab)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!4))))
(let ((a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!5))))
  (not (fp.eq (fp.abs a!6) ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           ((_ to_fp 11 53) #xbe38d48ed61d7aab)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!4))))
(let ((a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!5))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         a!6)
                 a!6)
         ((_ to_fp 11 53) #x3cc0000000000000)))))))))
(assert (not (bvslt a_ack!295 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!294) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!295))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!294))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!294)
                       ((_ to_fp 11 53) b_ack!294))
               ((_ to_fp 11 53) b_ack!294))
       ((_ to_fp 11 53) b_ack!294)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!294)
                       ((_ to_fp 11 53) b_ack!294))
               ((_ to_fp 11 53) b_ack!294))
       ((_ to_fp 11 53) b_ack!294)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           ((_ to_fp 11 53) #x3de6124613a86d09)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec71de3a556c734)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3ec71de3a556c734))
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!294)
                         ((_ to_fp 11 53) b_ack!294))
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           ((_ to_fp 11 53) #x3de6124613a86d09)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec71de3a556c734)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ec71de3a556c734))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           ((_ to_fp 11 53) #x3de6124613a86d09)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec71de3a556c734)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f81111111111111)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!294)
                                   ((_ to_fp 11 53) b_ack!294))
                           a!3))))
  (FPCHECK_FADD_UNDERFLOW
    #xbfc5555555555555
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!294)
                    ((_ to_fp 11 53) b_ack!294))
            a!4)))))))

(check-sat)
(exit)
