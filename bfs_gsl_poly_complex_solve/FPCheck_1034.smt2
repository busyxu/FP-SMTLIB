(declare-fun a5_ack!6064 () (_ BitVec 64))
(declare-fun a0_ack!6065 () (_ BitVec 64))
(declare-fun a1_ack!6060 () (_ BitVec 64))
(declare-fun a2_ack!6061 () (_ BitVec 64))
(declare-fun a3_ack!6062 () (_ BitVec 64))
(declare-fun a4_ack!6063 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!6064) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!6065))
                           ((_ to_fp 11 53) a5_ack!6064)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6060))
                           ((_ to_fp 11 53) a5_ack!6064)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6060))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6060))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6060))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6061))
                           ((_ to_fp 11 53) a5_ack!6064)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6061))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6061))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6061))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!6065))
                           ((_ to_fp 11 53) a5_ack!6064))))
      (a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6060))
                           ((_ to_fp 11 53) a5_ack!6064))))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6061))
                           ((_ to_fp 11 53) a5_ack!6064))))
      (a!5 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           a!2)
                   a!3)))
  (fp.eq (fp.add roundNearestTiesToEven a!4 a!5)
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064)))))
(let ((a!2 (fp.leq ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!9 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven (fp.abs a!6) a!7))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!8)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!9)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!9 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven (fp.abs a!6) a!7))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!8)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!9)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3))
                   a!4)))
(let ((a!6 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  a!3)
                          (fp.add roundNearestTiesToEven
                                  a!5
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!6))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!6 a!7)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!6 a!7)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    a!14))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!14)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!12))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!19)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!15))))
      (a!21 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!14))
                            a!20))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!10 a!16))
                            a!21)
                    (fp.abs a!23))))
  (not (fp.eq a!24 ((_ to_fp 11 53) #x0000000000000000))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!6 a!7)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!6 a!7)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    a!14))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!14)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!12))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!19)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!15))))
      (a!21 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!14))
                            a!20))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!10 a!16))
                            a!21)
                    (fp.abs a!23))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!10 a!16)
                      a!24)
              ((_ to_fp 11 53) #x0000000000000000))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!6063))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6062))
                           ((_ to_fp 11 53) a5_ack!6064))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!6 a!7)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!6 a!7)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    a!15))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!11 a!15)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18))))
      (a!28 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!13))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!20))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!27)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!16))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!11 a!15))
                    a!21))
      (a!30 (fp.add roundNearestTiesToEven
                    a!29
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10)))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!12 a!17))
                            (fp.abs a!22))
                    (fp.abs a!24))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!17)
                            a!25)
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!22 a!25)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10)
                            (fp.mul roundNearestTiesToEven a!30 a!9)))))
(let ((a!31 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!26
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!27)
                            (fp.mul roundNearestTiesToEven
                                    a!30
                                    (fp.div roundNearestTiesToEven a!6 a!7))))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!31 a!32)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!10)
    (fp.mul roundNearestTiesToEven
            a!33
            (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven a!24 a!25)
                    a!26)))))))))))))))))

(check-sat)
(exit)
