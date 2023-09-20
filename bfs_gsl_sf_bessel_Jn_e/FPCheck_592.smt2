(declare-fun a_ack!1763 () (_ BitVec 32))
(declare-fun b_ack!1762 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1763 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1762) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!1763))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1762))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!1762))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1762))
                           (fp.abs ((_ to_fp 11 53) b_ack!1762))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c84c0a98c0c8c21))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c9913778939d3fd)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc9913778939d3fd))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c84c0a98c0c8c21)))
                   a!6))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!8))
                           (fp.abs a!5))
                   ((_ to_fp 11 53) #x3cae43a1ec3cf706)))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!8)
                                    a!5)
                            ((_ to_fp 11 53) #x3cae43a1ec3cf706)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven a!7 a!9)
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!10) (fp.abs a!8))
            ((_ to_fp 11 53) #x3cc2ce99a6eb5efe))))))))))

(check-sat)
(exit)
