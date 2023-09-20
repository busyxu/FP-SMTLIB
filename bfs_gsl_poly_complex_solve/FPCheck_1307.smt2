(declare-fun a5_ack!7702 () (_ BitVec 64))
(declare-fun a0_ack!7703 () (_ BitVec 64))
(declare-fun a1_ack!7698 () (_ BitVec 64))
(declare-fun a2_ack!7699 () (_ BitVec 64))
(declare-fun a3_ack!7700 () (_ BitVec 64))
(declare-fun a4_ack!7701 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!7702) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!7703))
                           ((_ to_fp 11 53) a5_ack!7702)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!7698))
                           ((_ to_fp 11 53) a5_ack!7702)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!7698))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a1_ack!7698))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a1_ack!7698))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a2_ack!7699))
                           ((_ to_fp 11 53) a5_ack!7702)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!7699))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a2_ack!7699))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a2_ack!7699))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a0_ack!7703))
                           ((_ to_fp 11 53) a5_ack!7702))))
      (a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!7698))
                           ((_ to_fp 11 53) a5_ack!7702))))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!7699))
                           ((_ to_fp 11 53) a5_ack!7702))))
      (a!5 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702)))))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
      (a!10 (fp.div roundNearestTiesToEven
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
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!6 a!7)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    a!10))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven a!6 a!7)))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!12 a!10)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!17)))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven a!6 a!7))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!20))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!12 a!10))
                    a!15))
      (a!31 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven a!15 a!9))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!18 a!21))
                            (fp.abs a!22))
                    (fp.abs a!24))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!18 a!21)
                            a!25)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!17)
                            (fp.mul roundNearestTiesToEven
                                    a!21
                                    (fp.div roundNearestTiesToEven a!6 a!7)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    a!26)
                            a!16)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!20)
                            (fp.mul roundNearestTiesToEven a!21 a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    a!26)
                            a!31)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14))))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!28))))
      (a!34 (fp.add roundNearestTiesToEven
                    a!32
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!33))))
      (a!38 (fp.add roundNearestTiesToEven
                    a!37
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!47 (fp.add roundNearestTiesToEven
                    a!46
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!30 (fp.sub roundNearestTiesToEven
                    a!16
                    (fp.mul roundNearestTiesToEven
                            a!29
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    a!31
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!39 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!38
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!28)
                    (fp.mul roundNearestTiesToEven
                            a!29
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!42 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!33)
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!38
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!30)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!35)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!41)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!42))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    a!36
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!39)))
      (a!45 (fp.add roundNearestTiesToEven
                    a!43
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!44))))
(let ((a!48 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!30 a!40))
                            (fp.abs (fp.sub roundNearestTiesToEven a!41 a!45)))
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!47)))))
  (not (fp.eq a!48 ((_ to_fp 11 53) #x0000000000000000)))))))))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a4_ack!7701))
                           ((_ to_fp 11 53) a5_ack!7702))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!7700))
                           ((_ to_fp 11 53) a5_ack!7702))
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
      (a!10 (fp.div roundNearestTiesToEven
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
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!6 a!7)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    a!10))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven a!6 a!7)))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!12 a!10)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!17)))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven a!6 a!7))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!20))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven a!12 a!10))
                    a!15))
      (a!31 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven a!15 a!9))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!18 a!21))
                            (fp.abs a!22))
                    (fp.abs a!24))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!18 a!21)
                            a!25)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!17)
                            (fp.mul roundNearestTiesToEven
                                    a!21
                                    (fp.div roundNearestTiesToEven a!6 a!7)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    a!26)
                            a!16)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!20)
                            (fp.mul roundNearestTiesToEven a!21 a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    a!26)
                            a!31)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14))))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!28))))
      (a!34 (fp.add roundNearestTiesToEven
                    a!32
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!33))))
      (a!38 (fp.add roundNearestTiesToEven
                    a!37
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!47 (fp.add roundNearestTiesToEven
                    a!46
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!30 (fp.sub roundNearestTiesToEven
                    a!16
                    (fp.mul roundNearestTiesToEven
                            a!29
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    a!31
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!39 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!38
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!28)
                    (fp.mul roundNearestTiesToEven
                            a!29
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!42 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!33)
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!38
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!30)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!35)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!41)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!42))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    a!36
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!39)))
      (a!45 (fp.add roundNearestTiesToEven
                    a!43
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!24 a!25)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!44))))
(let ((a!48 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.sub roundNearestTiesToEven a!30 a!40))
                            (fp.abs (fp.sub roundNearestTiesToEven a!41 a!45)))
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!47)))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!30 a!40)
                      a!48)
              ((_ to_fp 11 53) #x0000000000000000)))))))))))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a3_ack!7700))
                   ((_ to_fp 11 53) a5_ack!7702)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a1_ack!7698))
                   ((_ to_fp 11 53) a5_ack!7702)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a4_ack!7701))
                   ((_ to_fp 11 53) a5_ack!7702)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a2_ack!7699))
                    ((_ to_fp 11 53) a5_ack!7702))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!6 (fp.abs a!4))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!6 (fp.abs a!4))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!6 (fp.abs a!4))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a0_ack!7703))
                            ((_ to_fp 11 53) a5_ack!7702))
                    a!9))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!15)
                            a!16)
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!19)
                            a!20)
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!19)
                            a!16)
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!15)
                            a!16)
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!19)
                            a!20)
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!19)
                            a!16)
                    (fp.div roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!34 (fp.add roundNearestTiesToEven
                    a!33
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    a!2
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!10 a!13)
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!17)))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!25)))
      (a!35 (fp.add roundNearestTiesToEven
                    a!34
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.sub roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!10 a!13)
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!21))))
      (a!28 (fp.add roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!27))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!53 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!23))))
      (a!30 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!29)))))
(let ((a!31 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!25)
                            a!30)))
      (a!32 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!17)
                            a!24)))
      (a!46 (fp.mul roundNearestTiesToEven
                    a!30
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!47 (fp.mul roundNearestTiesToEven
                    a!24
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!30
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!55 (fp.mul roundNearestTiesToEven
                    a!24
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!31 a!32)
                    (fp.abs (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!35)))))
(let ((a!37 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!17)
                            a!24)
                    a!36))
      (a!38 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!25)
                            a!30)
                    a!36))
      (a!43 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!35)
                            a!36)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!40 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!37
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!39))
      (a!41 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!35)
                            a!36)
                    (fp.add roundNearestTiesToEven
                            a!38
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!37
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!21)
                            a!47)))
      (a!56 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!37
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!23)
                            a!55)))
      (a!60 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!37
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!23)))
      (a!69 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!14 a!40)
                    (fp.mul roundNearestTiesToEven a!41 a!1)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!27)
                            a!46)
                    a!48))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!29)
                            a!54)
                    a!56))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!29)
                            a!60)
                    (fp.mul roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!70 (fp.add roundNearestTiesToEven
                    a!69
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!44 (fp.sub roundNearestTiesToEven
                    a!39
                    (fp.mul roundNearestTiesToEven
                            a!42
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!50 (fp.add roundNearestTiesToEven
                    a!49
                    (fp.mul roundNearestTiesToEven
                            a!41
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!45))))
      (a!58 (fp.add roundNearestTiesToEven
                    a!57
                    (fp.mul roundNearestTiesToEven
                            a!41
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!53))))
      (a!67 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!23)
                    (fp.mul roundNearestTiesToEven
                            a!61
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!71 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            a!70
                            (fp.mul roundNearestTiesToEven
                                    a!43
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!51 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!45)
                    (fp.mul roundNearestTiesToEven a!50 a!43)))
      (a!59 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!37
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!53)
                            (fp.mul roundNearestTiesToEven a!58 a!43))))
      (a!63 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!21)
                            a!47)
                    (fp.mul roundNearestTiesToEven
                            a!50
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!65 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!23)
                            a!55)
                    (fp.mul roundNearestTiesToEven
                            a!58
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!52 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    a!51))
      (a!64 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    a!63)))
(let ((a!62 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!52 a!59)
                    (fp.mul roundNearestTiesToEven
                            a!43
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!61 a!43)))))
      (a!66 (fp.add roundNearestTiesToEven
                    a!64
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!65))))
(let ((a!68 (fp.sub roundNearestTiesToEven
                    a!63
                    (fp.add roundNearestTiesToEven
                            a!66
                            (fp.mul roundNearestTiesToEven a!43 a!67)))))
(let ((a!72 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!68)
                            (fp.abs (fp.sub roundNearestTiesToEven a!51 a!62)))
                    (fp.abs a!71))))
(let ((a!73 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!51 a!62)
                                    a!72)
                            (fp.add roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!68 a!72)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven a!42 a!43))))
      (a!74 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!71 a!72)
                            (fp.add roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!68 a!72)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!3)))
(let ((a!75 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!44 a!73)
                            a!74)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!51 a!62)
                                    a!72)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.sub roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven a!42 a!43))
    a!75))))))))))))))))))))))))

(check-sat)
(exit)
