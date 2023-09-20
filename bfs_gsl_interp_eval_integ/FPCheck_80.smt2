(declare-fun x1_ack!864 () (_ BitVec 64))
(declare-fun x0_ack!871 () (_ BitVec 64))
(declare-fun x2_ack!865 () (_ BitVec 64))
(declare-fun b_ack!870 () (_ BitVec 64))
(declare-fun a_ack!869 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!866 () (_ BitVec 64))
(declare-fun y1_ack!867 () (_ BitVec 64))
(declare-fun y2_ack!868 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!871) ((_ to_fp 11 53) x1_ack!864)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!864) ((_ to_fp 11 53) x2_ack!865)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!864)
                       ((_ to_fp 11 53) x0_ack!871))
               ((_ to_fp 11 53) x0_ack!871))
       ((_ to_fp 11 53) x1_ack!864)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!864)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!864)
                       ((_ to_fp 11 53) x0_ack!871)))
       ((_ to_fp 11 53) x0_ack!871)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!865)
                       ((_ to_fp 11 53) x1_ack!864))
               ((_ to_fp 11 53) x1_ack!864))
       ((_ to_fp 11 53) x2_ack!865)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!865)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!865)
                       ((_ to_fp 11 53) x1_ack!864)))
       ((_ to_fp 11 53) x1_ack!864)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!864)
                    ((_ to_fp 11 53) x0_ack!871))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!865)
                    ((_ to_fp 11 53) x1_ack!864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!869) ((_ to_fp 11 53) b_ack!870))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!869) ((_ to_fp 11 53) x0_ack!871))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!870) ((_ to_fp 11 53) x2_ack!865))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!869) ((_ to_fp 11 53) b_ack!870))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!869) ((_ to_fp 11 53) x0_ack!871))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!869) ((_ to_fp 11 53) x1_ack!864))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!870) ((_ to_fp 11 53) x0_ack!871)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!864)
                    ((_ to_fp 11 53) x0_ack!871))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!868)
                           ((_ to_fp 11 53) y1_ack!867))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!865)
                                   ((_ to_fp 11 53) x1_ack!864)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!867)
                           ((_ to_fp 11 53) y0_ack!866))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!864)
                                   ((_ to_fp 11 53) x0_ack!871)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!865)
                                   ((_ to_fp 11 53) x1_ack!864))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!864)
                                   ((_ to_fp 11 53) x0_ack!871))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!864)
                    ((_ to_fp 11 53) x0_ack!871)))))))

(check-sat)
(exit)
