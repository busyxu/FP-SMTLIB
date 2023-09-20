(declare-fun x1_ack!6822 () (_ BitVec 64))
(declare-fun x0_ack!6829 () (_ BitVec 64))
(declare-fun x2_ack!6823 () (_ BitVec 64))
(declare-fun b_ack!6828 () (_ BitVec 64))
(declare-fun a_ack!6827 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!6824 () (_ BitVec 64))
(declare-fun y1_ack!6825 () (_ BitVec 64))
(declare-fun y2_ack!6826 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6829) ((_ to_fp 11 53) x1_ack!6822)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6822) ((_ to_fp 11 53) x2_ack!6823)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6822)
                       ((_ to_fp 11 53) x0_ack!6829))
               ((_ to_fp 11 53) x0_ack!6829))
       ((_ to_fp 11 53) x1_ack!6822)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6822)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6822)
                       ((_ to_fp 11 53) x0_ack!6829)))
       ((_ to_fp 11 53) x0_ack!6829)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6823)
                       ((_ to_fp 11 53) x1_ack!6822))
               ((_ to_fp 11 53) x1_ack!6822))
       ((_ to_fp 11 53) x2_ack!6823)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6823)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6823)
                       ((_ to_fp 11 53) x1_ack!6822)))
       ((_ to_fp 11 53) x1_ack!6822)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6822)
                    ((_ to_fp 11 53) x0_ack!6829))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6823)
                    ((_ to_fp 11 53) x1_ack!6822))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6827) ((_ to_fp 11 53) b_ack!6828))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6827) ((_ to_fp 11 53) x0_ack!6829))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6828) ((_ to_fp 11 53) x2_ack!6823))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6827) ((_ to_fp 11 53) b_ack!6828))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6827) ((_ to_fp 11 53) x0_ack!6829))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6827) ((_ to_fp 11 53) x1_ack!6822))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6828) ((_ to_fp 11 53) x0_ack!6829))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6828) ((_ to_fp 11 53) x1_ack!6822)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6822) ((_ to_fp 11 53) b_ack!6828))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6822)
                    ((_ to_fp 11 53) x0_ack!6829))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6823)
                    ((_ to_fp 11 53) x1_ack!6822))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6826)
                           ((_ to_fp 11 53) y1_ack!6825))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6823)
                                   ((_ to_fp 11 53) x1_ack!6822)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6825)
                           ((_ to_fp 11 53) y0_ack!6824))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6822)
                                   ((_ to_fp 11 53) x0_ack!6829)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6823)
                                   ((_ to_fp 11 53) x1_ack!6822))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6822)
                                   ((_ to_fp 11 53) x0_ack!6829))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6823)
                    ((_ to_fp 11 53) x1_ack!6822))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
