(declare-fun b_ack!937 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!938 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!937))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!937))
            ((_ to_fp 11 53) #x3cc0000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!937)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cc0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))))
      (a!2 (fp.abs (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
  (fp.lt a!1 a!2)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!937))
               ((_ to_fp 11 53) b_ack!937))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!937)))
       ((_ to_fp 11 53) b_ack!937)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff1c10380775517)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c103807747d0))
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c1038077625e)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1019529fadb))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1056bc4c9e1)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
                           ((_ to_fp 11 53) #x3ff1b558cab92946))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
                           ((_ to_fp 11 53) #x3ff1ccb20cd06a7c)))))
(let ((a!7 (ite (fp.isInfinite (fp.mul roundNearestTiesToEven
                                       a!4
                                       (fp.mul roundNearestTiesToEven a!6 a!3)))
                #x01
                #x00)))
  (not (= ((_ extract 0 0) a!7) #b1))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff1c10380775517)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c103807747d0))
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c1038077625e)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1019529fadb))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1056bc4c9e1)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
                           ((_ to_fp 11 53) #x3ff1b558cab92946))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
                           ((_ to_fp 11 53) #x3ff1ccb20cd06a7c)))))
(let ((a!7 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.abs (fp.mul roundNearestTiesToEven
                                  a!4
                                  (fp.mul roundNearestTiesToEven a!6 a!3))))))
  (not a!7)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff1c10380775517)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c103807747d0))
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c1038077625e)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1019529fadb))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1056bc4c9e1)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
                           ((_ to_fp 11 53) #x3ff1b558cab92946))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))
                           ((_ to_fp 11 53) #x3ff1ccb20cd06a7c)))))
  (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                         a!4
                         (fp.mul roundNearestTiesToEven a!6 a!3)))
         ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))))
      (a!8 (fp.geq (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!938)
                                   ((_ to_fp 11 53) #x3ff1c10380775517)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff1c10380775517))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1019529fadb))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff1c1038077625e))
                           ((_ to_fp 11 53) #x3ff1c1056bc4c9e1))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff1c103807747d0))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff1c1038077625e)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff1c10380775517)
                                   a!1)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           (fp.mul roundNearestTiesToEven a!3 a!5))
                   ((_ to_fp 11 53) #x3ff1ccb20cd06a7c))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff3996419a0d4f7))
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            a!7
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (ite a!8 #x00000001 #xffffffff)))
    #x3ff0000000000000)))))))

(check-sat)
(exit)
