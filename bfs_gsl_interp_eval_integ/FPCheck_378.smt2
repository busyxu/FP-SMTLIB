(declare-fun x1_ack!4704 () (_ BitVec 64))
(declare-fun x0_ack!4711 () (_ BitVec 64))
(declare-fun x2_ack!4705 () (_ BitVec 64))
(declare-fun b_ack!4710 () (_ BitVec 64))
(declare-fun a_ack!4709 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4706 () (_ BitVec 64))
(declare-fun y1_ack!4707 () (_ BitVec 64))
(declare-fun y2_ack!4708 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4711) ((_ to_fp 11 53) x1_ack!4704)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4704) ((_ to_fp 11 53) x2_ack!4705)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4704)
                       ((_ to_fp 11 53) x0_ack!4711))
               ((_ to_fp 11 53) x0_ack!4711))
       ((_ to_fp 11 53) x1_ack!4704)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4704)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4704)
                       ((_ to_fp 11 53) x0_ack!4711)))
       ((_ to_fp 11 53) x0_ack!4711)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4705)
                       ((_ to_fp 11 53) x1_ack!4704))
               ((_ to_fp 11 53) x1_ack!4704))
       ((_ to_fp 11 53) x2_ack!4705)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4705)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4705)
                       ((_ to_fp 11 53) x1_ack!4704)))
       ((_ to_fp 11 53) x1_ack!4704)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4704)
                    ((_ to_fp 11 53) x0_ack!4711))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4705)
                    ((_ to_fp 11 53) x1_ack!4704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4709) ((_ to_fp 11 53) b_ack!4710))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4709) ((_ to_fp 11 53) x0_ack!4711))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4710) ((_ to_fp 11 53) x2_ack!4705))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4709) ((_ to_fp 11 53) b_ack!4710))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4709) ((_ to_fp 11 53) x0_ack!4711))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4709) ((_ to_fp 11 53) x1_ack!4704))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4710) ((_ to_fp 11 53) x0_ack!4711))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4710) ((_ to_fp 11 53) x1_ack!4704))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4704)
                    ((_ to_fp 11 53) x0_ack!4711))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4708)
                           ((_ to_fp 11 53) y1_ack!4707))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4705)
                                   ((_ to_fp 11 53) x1_ack!4704)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4707)
                           ((_ to_fp 11 53) y0_ack!4706))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4704)
                                   ((_ to_fp 11 53) x0_ack!4711)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4705)
                                   ((_ to_fp 11 53) x1_ack!4704))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4704)
                                   ((_ to_fp 11 53) x0_ack!4711)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4709)
                                   ((_ to_fp 11 53) x0_ack!4711))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4709)
                                   ((_ to_fp 11 53) x0_ack!4711)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4710)
                                   ((_ to_fp 11 53) x0_ack!4711))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4710)
                                   ((_ to_fp 11 53) x0_ack!4711))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4704)
                                   ((_ to_fp 11 53) x0_ack!4711))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4709)
                                   ((_ to_fp 11 53) x0_ack!4711))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4710)
                                   ((_ to_fp 11 53) x0_ack!4711))))))
  (FPCHECK_FMUL_OVERFLOW a!6 a!7))))))

(check-sat)
(exit)
