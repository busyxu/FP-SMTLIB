(declare-fun x1_ack!2175 () (_ BitVec 64))
(declare-fun x0_ack!2182 () (_ BitVec 64))
(declare-fun x2_ack!2176 () (_ BitVec 64))
(declare-fun b_ack!2181 () (_ BitVec 64))
(declare-fun a_ack!2180 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2177 () (_ BitVec 64))
(declare-fun y1_ack!2178 () (_ BitVec 64))
(declare-fun y2_ack!2179 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2182) ((_ to_fp 11 53) x1_ack!2175)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2175) ((_ to_fp 11 53) x2_ack!2176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2175)
                       ((_ to_fp 11 53) x0_ack!2182))
               ((_ to_fp 11 53) x0_ack!2182))
       ((_ to_fp 11 53) x1_ack!2175)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2175)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2175)
                       ((_ to_fp 11 53) x0_ack!2182)))
       ((_ to_fp 11 53) x0_ack!2182)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2176)
                       ((_ to_fp 11 53) x1_ack!2175))
               ((_ to_fp 11 53) x1_ack!2175))
       ((_ to_fp 11 53) x2_ack!2176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2176)
                       ((_ to_fp 11 53) x1_ack!2175)))
       ((_ to_fp 11 53) x1_ack!2175)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2175)
                    ((_ to_fp 11 53) x0_ack!2182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2176)
                    ((_ to_fp 11 53) x1_ack!2175))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2180) ((_ to_fp 11 53) b_ack!2181))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2180) ((_ to_fp 11 53) x0_ack!2182))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2181) ((_ to_fp 11 53) x2_ack!2176))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2180) ((_ to_fp 11 53) b_ack!2181))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2180) ((_ to_fp 11 53) x0_ack!2182))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2180) ((_ to_fp 11 53) x1_ack!2175))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2181) ((_ to_fp 11 53) x0_ack!2182))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2181) ((_ to_fp 11 53) x1_ack!2175)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2175) ((_ to_fp 11 53) b_ack!2181))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2175)
                    ((_ to_fp 11 53) x0_ack!2182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2176)
                    ((_ to_fp 11 53) x1_ack!2175))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2179)
                           ((_ to_fp 11 53) y1_ack!2178))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2176)
                                   ((_ to_fp 11 53) x1_ack!2175)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2178)
                           ((_ to_fp 11 53) y0_ack!2177))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2175)
                                   ((_ to_fp 11 53) x0_ack!2182)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2176)
                                   ((_ to_fp 11 53) x1_ack!2175))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2175)
                                   ((_ to_fp 11 53) x0_ack!2182))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2176)
                    ((_ to_fp 11 53) x1_ack!2175)))))))

(check-sat)
(exit)
