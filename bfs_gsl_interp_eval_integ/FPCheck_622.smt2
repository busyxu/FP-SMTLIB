(declare-fun x1_ack!7809 () (_ BitVec 64))
(declare-fun x0_ack!7816 () (_ BitVec 64))
(declare-fun x2_ack!7810 () (_ BitVec 64))
(declare-fun b_ack!7815 () (_ BitVec 64))
(declare-fun a_ack!7814 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7811 () (_ BitVec 64))
(declare-fun y1_ack!7812 () (_ BitVec 64))
(declare-fun y2_ack!7813 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7816) ((_ to_fp 11 53) x1_ack!7809)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7809) ((_ to_fp 11 53) x2_ack!7810)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7809)
                       ((_ to_fp 11 53) x0_ack!7816))
               ((_ to_fp 11 53) x0_ack!7816))
       ((_ to_fp 11 53) x1_ack!7809)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7809)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7809)
                       ((_ to_fp 11 53) x0_ack!7816)))
       ((_ to_fp 11 53) x0_ack!7816)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7810)
                       ((_ to_fp 11 53) x1_ack!7809))
               ((_ to_fp 11 53) x1_ack!7809))
       ((_ to_fp 11 53) x2_ack!7810)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7810)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7810)
                       ((_ to_fp 11 53) x1_ack!7809)))
       ((_ to_fp 11 53) x1_ack!7809)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7809)
                    ((_ to_fp 11 53) x0_ack!7816))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7810)
                    ((_ to_fp 11 53) x1_ack!7809))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7814) ((_ to_fp 11 53) b_ack!7815))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7814) ((_ to_fp 11 53) x0_ack!7816))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7815) ((_ to_fp 11 53) x2_ack!7810))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7814) ((_ to_fp 11 53) b_ack!7815))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7814) ((_ to_fp 11 53) x0_ack!7816))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7814) ((_ to_fp 11 53) x1_ack!7809))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7815) ((_ to_fp 11 53) x0_ack!7816))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7815) ((_ to_fp 11 53) x1_ack!7809)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7809) ((_ to_fp 11 53) b_ack!7815))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7809)
                    ((_ to_fp 11 53) x0_ack!7816))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7810)
                    ((_ to_fp 11 53) x1_ack!7809))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7813)
                           ((_ to_fp 11 53) y1_ack!7812))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7810)
                                   ((_ to_fp 11 53) x1_ack!7809)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7812)
                           ((_ to_fp 11 53) y0_ack!7811))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7809)
                                   ((_ to_fp 11 53) x0_ack!7816)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7810)
                                   ((_ to_fp 11 53) x1_ack!7809))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7809)
                                   ((_ to_fp 11 53) x0_ack!7816)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!7809)
                           ((_ to_fp 11 53) x1_ack!7809))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7815)
                           ((_ to_fp 11 53) x1_ack!7809))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7809)
                                   ((_ to_fp 11 53) x1_ack!7809))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7809)
                                   ((_ to_fp 11 53) x1_ack!7809)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7815)
                                   ((_ to_fp 11 53) x1_ack!7809))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7815)
                                   ((_ to_fp 11 53) x1_ack!7809))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7809)
                                    ((_ to_fp 11 53) x1_ack!7809))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!7815)
                                    ((_ to_fp 11 53) x1_ack!7809))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!7810)
                           ((_ to_fp 11 53) x1_ack!7809))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!4)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x2_ack!7810)
                                    ((_ to_fp 11 53) x1_ack!7809))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7813)
                                   ((_ to_fp 11 53) y1_ack!7812))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7810)
                                   ((_ to_fp 11 53) x1_ack!7809)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!12)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!7812)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd5555555555555)
                                    a!4)
                            a!10))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!7815)
            ((_ to_fp 11 53) x1_ack!7809))
    (fp.add roundNearestTiesToEven a!11 a!13)))))))))

(check-sat)
(exit)
