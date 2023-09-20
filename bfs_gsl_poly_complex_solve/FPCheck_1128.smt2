(declare-fun a5_ack!6628 () (_ BitVec 64))
(declare-fun a0_ack!6629 () (_ BitVec 64))
(declare-fun a1_ack!6624 () (_ BitVec 64))
(declare-fun a2_ack!6625 () (_ BitVec 64))
(declare-fun a3_ack!6626 () (_ BitVec 64))
(declare-fun a4_ack!6627 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!6628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!6629))
                           ((_ to_fp 11 53) a5_ack!6628)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6624))
                           ((_ to_fp 11 53) a5_ack!6628)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6624))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a1_ack!6624))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a1_ack!6624))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a2_ack!6625))
                           ((_ to_fp 11 53) a5_ack!6628)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6625))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a2_ack!6625))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a2_ack!6625))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a0_ack!6629))
                           ((_ to_fp 11 53) a5_ack!6628))))
      (a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!6624))
                           ((_ to_fp 11 53) a5_ack!6628))))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!6625))
                           ((_ to_fp 11 53) a5_ack!6628))))
      (a!5 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628)))))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628))
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
                                   ((_ to_fp 11 53) a4_ack!6627))
                           ((_ to_fp 11 53) a5_ack!6628))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!6626))
                           ((_ to_fp 11 53) a5_ack!6628))
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
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!6))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!7 a!6)
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!6)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    a!9))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven a!7 a!6))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!14 a!9)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!19)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!16))))
      (a!22 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!21)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!13))))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!14 a!9))
                    a!22)))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!15 a!18))
                            (fp.abs a!23))
                    (fp.abs a!24))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!18)
                            a!25)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!23 a!25)
                            a!26)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!21)
                            (fp.mul roundNearestTiesToEven a!22 a!10))))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!23 a!25)
                            a!26)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!19)
                            (fp.mul roundNearestTiesToEven
                                    a!22
                                    (fp.div roundNearestTiesToEven a!7 a!6)))))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!23 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!21)))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!13)
                            (fp.mul roundNearestTiesToEven a!18 a!10))
                    a!27))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!16)
                            (fp.mul roundNearestTiesToEven
                                    a!18
                                    (fp.div roundNearestTiesToEven a!7 a!6)))
                    a!32))
      (a!38 (fp.add roundNearestTiesToEven
                    a!37
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))))
      (a!34 (fp.add roundNearestTiesToEven
                    a!33
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!31))))
      (a!39 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!38
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!30 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            a!29
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!31)
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!35)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!23 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!30))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    a!36
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!39))))
  (FPCHECK_FSUB_OVERFLOW
    a!30
    (fp.mul roundNearestTiesToEven
            a!40
            (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven a!23 a!25)
                    a!26)))))))))))))))))))))

(check-sat)
(exit)
