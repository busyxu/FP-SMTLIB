(declare-fun x1_ack!6040 () (_ BitVec 64))
(declare-fun x0_ack!6047 () (_ BitVec 64))
(declare-fun x2_ack!6041 () (_ BitVec 64))
(declare-fun b_ack!6046 () (_ BitVec 64))
(declare-fun a_ack!6045 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6042 () (_ BitVec 64))
(declare-fun y1_ack!6043 () (_ BitVec 64))
(declare-fun y2_ack!6044 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6047) ((_ to_fp 11 53) x1_ack!6040)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6040) ((_ to_fp 11 53) x2_ack!6041)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6040)
                       ((_ to_fp 11 53) x0_ack!6047))
               ((_ to_fp 11 53) x0_ack!6047))
       ((_ to_fp 11 53) x1_ack!6040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6040)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6040)
                       ((_ to_fp 11 53) x0_ack!6047)))
       ((_ to_fp 11 53) x0_ack!6047)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6041)
                       ((_ to_fp 11 53) x1_ack!6040))
               ((_ to_fp 11 53) x1_ack!6040))
       ((_ to_fp 11 53) x2_ack!6041)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6041)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6041)
                       ((_ to_fp 11 53) x1_ack!6040)))
       ((_ to_fp 11 53) x1_ack!6040)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6040)
                    ((_ to_fp 11 53) x0_ack!6047))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6041)
                    ((_ to_fp 11 53) x1_ack!6040))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6045) ((_ to_fp 11 53) b_ack!6046))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6045) ((_ to_fp 11 53) x0_ack!6047))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6046) ((_ to_fp 11 53) x2_ack!6041))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6045) ((_ to_fp 11 53) b_ack!6046))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6045) ((_ to_fp 11 53) x0_ack!6047))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6045) ((_ to_fp 11 53) x1_ack!6040)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6040) ((_ to_fp 11 53) a_ack!6045))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6046) ((_ to_fp 11 53) x1_ack!6040))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6046) ((_ to_fp 11 53) x2_ack!6041))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6041)
                    ((_ to_fp 11 53) x1_ack!6040))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6044)
                           ((_ to_fp 11 53) y1_ack!6043))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6041)
                                   ((_ to_fp 11 53) x1_ack!6040)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6043)
                           ((_ to_fp 11 53) y0_ack!6042))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6040)
                                   ((_ to_fp 11 53) x0_ack!6047)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6041)
                                   ((_ to_fp 11 53) x1_ack!6040))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6040)
                                   ((_ to_fp 11 53) x0_ack!6047))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!4))))

(check-sat)
(exit)
