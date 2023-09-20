(declare-fun x1_ack!2057 () (_ BitVec 64))
(declare-fun x0_ack!2064 () (_ BitVec 64))
(declare-fun x2_ack!2058 () (_ BitVec 64))
(declare-fun b_ack!2063 () (_ BitVec 64))
(declare-fun a_ack!2062 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2059 () (_ BitVec 64))
(declare-fun y1_ack!2060 () (_ BitVec 64))
(declare-fun y2_ack!2061 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2064) ((_ to_fp 11 53) x1_ack!2057)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2057) ((_ to_fp 11 53) x2_ack!2058)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2057)
                       ((_ to_fp 11 53) x0_ack!2064))
               ((_ to_fp 11 53) x0_ack!2064))
       ((_ to_fp 11 53) x1_ack!2057)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2057)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2057)
                       ((_ to_fp 11 53) x0_ack!2064)))
       ((_ to_fp 11 53) x0_ack!2064)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2058)
                       ((_ to_fp 11 53) x1_ack!2057))
               ((_ to_fp 11 53) x1_ack!2057))
       ((_ to_fp 11 53) x2_ack!2058)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2058)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2058)
                       ((_ to_fp 11 53) x1_ack!2057)))
       ((_ to_fp 11 53) x1_ack!2057)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2057)
                    ((_ to_fp 11 53) x0_ack!2064))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2058)
                    ((_ to_fp 11 53) x1_ack!2057))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2062) ((_ to_fp 11 53) b_ack!2063))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2062) ((_ to_fp 11 53) x0_ack!2064))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2063) ((_ to_fp 11 53) x2_ack!2058))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2062) ((_ to_fp 11 53) b_ack!2063))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2062) ((_ to_fp 11 53) x0_ack!2064))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2062) ((_ to_fp 11 53) x1_ack!2057))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2063) ((_ to_fp 11 53) x0_ack!2064))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2063) ((_ to_fp 11 53) x1_ack!2057)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2057) ((_ to_fp 11 53) b_ack!2063))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2057)
                    ((_ to_fp 11 53) x0_ack!2064))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2058)
                    ((_ to_fp 11 53) x1_ack!2057))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2061)
                           ((_ to_fp 11 53) y1_ack!2060))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2058)
                                   ((_ to_fp 11 53) x1_ack!2057)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2060)
                           ((_ to_fp 11 53) y0_ack!2059))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2057)
                                   ((_ to_fp 11 53) x0_ack!2064)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2058)
                                   ((_ to_fp 11 53) x1_ack!2057))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2057)
                                   ((_ to_fp 11 53) x0_ack!2064))))))
  (FPCHECK_FSUB_OVERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
