(declare-fun x1_ack!2864 () (_ BitVec 64))
(declare-fun x0_ack!2871 () (_ BitVec 64))
(declare-fun x2_ack!2865 () (_ BitVec 64))
(declare-fun b_ack!2870 () (_ BitVec 64))
(declare-fun a_ack!2869 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2866 () (_ BitVec 64))
(declare-fun y1_ack!2867 () (_ BitVec 64))
(declare-fun y2_ack!2868 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2871) ((_ to_fp 11 53) x1_ack!2864)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2864) ((_ to_fp 11 53) x2_ack!2865)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2864)
                       ((_ to_fp 11 53) x0_ack!2871))
               ((_ to_fp 11 53) x0_ack!2871))
       ((_ to_fp 11 53) x1_ack!2864)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2864)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2864)
                       ((_ to_fp 11 53) x0_ack!2871)))
       ((_ to_fp 11 53) x0_ack!2871)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2865)
                       ((_ to_fp 11 53) x1_ack!2864))
               ((_ to_fp 11 53) x1_ack!2864))
       ((_ to_fp 11 53) x2_ack!2865)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2865)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2865)
                       ((_ to_fp 11 53) x1_ack!2864)))
       ((_ to_fp 11 53) x1_ack!2864)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2864)
                    ((_ to_fp 11 53) x0_ack!2871))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2865)
                    ((_ to_fp 11 53) x1_ack!2864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) b_ack!2870))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) x0_ack!2871))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2870) ((_ to_fp 11 53) x2_ack!2865))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) b_ack!2870))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) x0_ack!2871))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) x1_ack!2864)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2864) ((_ to_fp 11 53) a_ack!2869))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2870) ((_ to_fp 11 53) x1_ack!2864))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2870) ((_ to_fp 11 53) x2_ack!2865))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2865)
                    ((_ to_fp 11 53) x1_ack!2864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2868)
                           ((_ to_fp 11 53) y1_ack!2867))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2865)
                                   ((_ to_fp 11 53) x1_ack!2864)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2867)
                           ((_ to_fp 11 53) y0_ack!2866))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2864)
                                   ((_ to_fp 11 53) x0_ack!2871)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2865)
                                   ((_ to_fp 11 53) x1_ack!2864))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2864)
                                   ((_ to_fp 11 53) x0_ack!2871)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) x1_ack!2864))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) x1_ack!2864)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2870)
                                   ((_ to_fp 11 53) x1_ack!2864))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2870)
                                   ((_ to_fp 11 53) x1_ack!2864))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) x1_ack!2864))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2870)
                                   ((_ to_fp 11 53) x1_ack!2864))))))
  (FPCHECK_FMUL_UNDERFLOW a!4 a!6))))

(check-sat)
(exit)
