(declare-fun x1_ack!6806 () (_ BitVec 64))
(declare-fun x0_ack!6813 () (_ BitVec 64))
(declare-fun x2_ack!6807 () (_ BitVec 64))
(declare-fun b_ack!6812 () (_ BitVec 64))
(declare-fun a_ack!6811 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!6808 () (_ BitVec 64))
(declare-fun y1_ack!6809 () (_ BitVec 64))
(declare-fun y2_ack!6810 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6813) ((_ to_fp 11 53) x1_ack!6806)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6806) ((_ to_fp 11 53) x2_ack!6807)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6806)
                       ((_ to_fp 11 53) x0_ack!6813))
               ((_ to_fp 11 53) x0_ack!6813))
       ((_ to_fp 11 53) x1_ack!6806)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6806)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6806)
                       ((_ to_fp 11 53) x0_ack!6813)))
       ((_ to_fp 11 53) x0_ack!6813)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6807)
                       ((_ to_fp 11 53) x1_ack!6806))
               ((_ to_fp 11 53) x1_ack!6806))
       ((_ to_fp 11 53) x2_ack!6807)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6807)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6807)
                       ((_ to_fp 11 53) x1_ack!6806)))
       ((_ to_fp 11 53) x1_ack!6806)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6806)
                    ((_ to_fp 11 53) x0_ack!6813))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6807)
                    ((_ to_fp 11 53) x1_ack!6806))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6811) ((_ to_fp 11 53) b_ack!6812))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6811) ((_ to_fp 11 53) x0_ack!6813))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6812) ((_ to_fp 11 53) x2_ack!6807))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6811) ((_ to_fp 11 53) b_ack!6812))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6811) ((_ to_fp 11 53) x0_ack!6813))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6811) ((_ to_fp 11 53) x1_ack!6806))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6812) ((_ to_fp 11 53) x0_ack!6813))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6812) ((_ to_fp 11 53) x1_ack!6806)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6806) ((_ to_fp 11 53) b_ack!6812))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6806)
                    ((_ to_fp 11 53) x0_ack!6813))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6807)
                    ((_ to_fp 11 53) x1_ack!6806))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6810)
                           ((_ to_fp 11 53) y1_ack!6809))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6807)
                                   ((_ to_fp 11 53) x1_ack!6806)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6809)
                           ((_ to_fp 11 53) y0_ack!6808))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6806)
                                   ((_ to_fp 11 53) x0_ack!6813)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6807)
                                   ((_ to_fp 11 53) x1_ack!6806))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6806)
                                   ((_ to_fp 11 53) x0_ack!6813))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6807)
                    ((_ to_fp 11 53) x1_ack!6806))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
