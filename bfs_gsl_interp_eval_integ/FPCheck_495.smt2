(declare-fun x1_ack!6205 () (_ BitVec 64))
(declare-fun x0_ack!6212 () (_ BitVec 64))
(declare-fun x2_ack!6206 () (_ BitVec 64))
(declare-fun b_ack!6211 () (_ BitVec 64))
(declare-fun a_ack!6210 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6207 () (_ BitVec 64))
(declare-fun y1_ack!6208 () (_ BitVec 64))
(declare-fun y2_ack!6209 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6212) ((_ to_fp 11 53) x1_ack!6205)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6205) ((_ to_fp 11 53) x2_ack!6206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6205)
                       ((_ to_fp 11 53) x0_ack!6212))
               ((_ to_fp 11 53) x0_ack!6212))
       ((_ to_fp 11 53) x1_ack!6205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6205)
                       ((_ to_fp 11 53) x0_ack!6212)))
       ((_ to_fp 11 53) x0_ack!6212)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6206)
                       ((_ to_fp 11 53) x1_ack!6205))
               ((_ to_fp 11 53) x1_ack!6205))
       ((_ to_fp 11 53) x2_ack!6206)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6206)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6206)
                       ((_ to_fp 11 53) x1_ack!6205)))
       ((_ to_fp 11 53) x1_ack!6205)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6205)
                    ((_ to_fp 11 53) x0_ack!6212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6206)
                    ((_ to_fp 11 53) x1_ack!6205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6210) ((_ to_fp 11 53) b_ack!6211))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6210) ((_ to_fp 11 53) x0_ack!6212))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6211) ((_ to_fp 11 53) x2_ack!6206))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6210) ((_ to_fp 11 53) b_ack!6211))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6210) ((_ to_fp 11 53) x0_ack!6212))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6210) ((_ to_fp 11 53) x1_ack!6205))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6211) ((_ to_fp 11 53) x0_ack!6212))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6211) ((_ to_fp 11 53) x1_ack!6205)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6205) ((_ to_fp 11 53) b_ack!6211))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6205)
                    ((_ to_fp 11 53) x0_ack!6212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6209)
                           ((_ to_fp 11 53) y1_ack!6208))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6206)
                                   ((_ to_fp 11 53) x1_ack!6205)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6208)
                           ((_ to_fp 11 53) y0_ack!6207))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6205)
                                   ((_ to_fp 11 53) x0_ack!6212)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6206)
                                   ((_ to_fp 11 53) x1_ack!6205))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6205)
                                   ((_ to_fp 11 53) x0_ack!6212)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6210)
                                   ((_ to_fp 11 53) x0_ack!6212))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6210)
                                   ((_ to_fp 11 53) x0_ack!6212)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6205)
                                   ((_ to_fp 11 53) x0_ack!6212))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6205)
                                   ((_ to_fp 11 53) x0_ack!6212))))))
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
                                   ((_ to_fp 11 53) x1_ack!6205)
                                   ((_ to_fp 11 53) x0_ack!6212))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6210)
                                   ((_ to_fp 11 53) x0_ack!6212))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6205)
                                   ((_ to_fp 11 53) x0_ack!6212))))))
  (FPCHECK_FMUL_OVERFLOW a!6 a!7))))))

(check-sat)
(exit)
