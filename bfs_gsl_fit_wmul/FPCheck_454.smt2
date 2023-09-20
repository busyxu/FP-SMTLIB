(declare-fun w0_ack!2476 () (_ BitVec 64))
(declare-fun w1_ack!2473 () (_ BitVec 64))
(declare-fun w2_ack!2474 () (_ BitVec 64))
(declare-fun w3_ack!2475 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!2473) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!2476)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x409ef00000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           a!3)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!1))))
  (fp.eq a!4 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!2476)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x409ef00000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           a!3)
                   a!3)))
  (fp.eq a!4
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x0000000000000000)
                 a!1))))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!2475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!2473) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!2475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))
                   ((_ to_fp 11 53) w1_ack!2473)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) w1_ack!2473)
                                   a!1)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!4)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!4)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!5 a!2)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) w1_ack!2473)
                                   a!1)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!4)
                                   a!7))
                   a!1)))
  (fp.eq a!8
         (fp.add roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!4 a!4)
                 a!7))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!3))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!4)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!4)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!5 a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!4 a!4)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!1))
                           (fp.mul roundNearestTiesToEven a!6 a!3)))))
  (not (fp.eq (fp.abs a!7) ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))
                   ((_ to_fp 11 53) w1_ack!2473)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) w1_ack!2473)
                                   a!1)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!4)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!4)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!5 a!2)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) w1_ack!2473)
                                   a!1)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!4)
                                   a!7))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           a!7))))
  (fp.eq a!8 a!1)))))))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!5 a!3))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!7 a!1))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!10 a!1)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!6 a!4)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1))
                           (fp.mul roundNearestTiesToEven a!8 a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1))
                            (fp.mul roundNearestTiesToEven a!11 a!3)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven a!9 a!12)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x409ec80000000000)
                            a!6))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    a!4)
                            a!13)
                    a!13)))
  (fp.eq a!14
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4028000000000000)
                 a!4)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!5 a!3))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!7 a!1))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!10 a!1)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!6 a!4)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1))
                           (fp.mul roundNearestTiesToEven a!8 a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1))
                            (fp.mul roundNearestTiesToEven a!11 a!3)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven a!9 a!12)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x409ec80000000000)
                            a!6))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4028000000000000)
                            a!4)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    a!4)
                            a!13))))
  (fp.eq a!14 a!13))))))))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!2473) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!5 a!3))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!7 a!1))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!10 a!1)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!6 a!4)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1))
                           (fp.mul roundNearestTiesToEven a!8 a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1))
                            (fp.mul roundNearestTiesToEven a!11 a!3)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven a!9 a!12)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x409ef00000000000)
                            a!6))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    a!4)
                            a!13)
                    a!13)))
  (fp.eq a!14
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4026000000000000)
                 a!4)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!5 a!3))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!7 a!1))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!10 a!1)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!6 a!4)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1))
                           (fp.mul roundNearestTiesToEven a!8 a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1))
                            (fp.mul roundNearestTiesToEven a!11 a!3)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven a!9 a!12)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x409ef00000000000)
                            a!6))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4026000000000000)
                            a!4)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    a!4)
                            a!13))))
  (fp.eq a!14 a!13))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!2473)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!2476))
                           ((_ to_fp 11 53) w1_ack!2473)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven a!5 a!3))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ec80000000000)
                                    a!6))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ef00000000000)
                                   a!6)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!7 a!1))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!10 a!1)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!6 a!4)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1))
                           (fp.mul roundNearestTiesToEven a!8 a!3))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1))
                            (fp.mul roundNearestTiesToEven a!11 a!3)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4026000000000000)
                            a!4)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!9 a!12)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x409ef00000000000)
                                    a!6)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!12)
                                    a!6))
                    a!13)))
  (FPCHECK_FMUL_OVERFLOW w1_ack!2473 a!14))))))))))

(check-sat)
(exit)
