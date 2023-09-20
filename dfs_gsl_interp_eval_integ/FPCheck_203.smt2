(declare-fun x1_ack!2388 () (_ BitVec 64))
(declare-fun x0_ack!2395 () (_ BitVec 64))
(declare-fun x2_ack!2389 () (_ BitVec 64))
(declare-fun b_ack!2394 () (_ BitVec 64))
(declare-fun a_ack!2393 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2390 () (_ BitVec 64))
(declare-fun y1_ack!2391 () (_ BitVec 64))
(declare-fun y2_ack!2392 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2395) ((_ to_fp 11 53) x1_ack!2388)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2388) ((_ to_fp 11 53) x2_ack!2389)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2388)
                       ((_ to_fp 11 53) x0_ack!2395))
               ((_ to_fp 11 53) x0_ack!2395))
       ((_ to_fp 11 53) x1_ack!2388)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2388)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2388)
                       ((_ to_fp 11 53) x0_ack!2395)))
       ((_ to_fp 11 53) x0_ack!2395)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2389)
                       ((_ to_fp 11 53) x1_ack!2388))
               ((_ to_fp 11 53) x1_ack!2388))
       ((_ to_fp 11 53) x2_ack!2389)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2389)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2389)
                       ((_ to_fp 11 53) x1_ack!2388)))
       ((_ to_fp 11 53) x1_ack!2388)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2388)
                    ((_ to_fp 11 53) x0_ack!2395))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2389)
                    ((_ to_fp 11 53) x1_ack!2388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2393) ((_ to_fp 11 53) b_ack!2394))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2393) ((_ to_fp 11 53) x0_ack!2395))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2394) ((_ to_fp 11 53) x2_ack!2389))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2393) ((_ to_fp 11 53) b_ack!2394))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2393) ((_ to_fp 11 53) x0_ack!2395))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2393) ((_ to_fp 11 53) x1_ack!2388))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2394) ((_ to_fp 11 53) x0_ack!2395))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2394) ((_ to_fp 11 53) x1_ack!2388)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2388) ((_ to_fp 11 53) b_ack!2394))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2388)
                    ((_ to_fp 11 53) x0_ack!2395))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2389)
                    ((_ to_fp 11 53) x1_ack!2388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2392)
                           ((_ to_fp 11 53) y1_ack!2391))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2389)
                                   ((_ to_fp 11 53) x1_ack!2388)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2391)
                           ((_ to_fp 11 53) y0_ack!2390))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2388)
                                   ((_ to_fp 11 53) x0_ack!2395)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2389)
                                   ((_ to_fp 11 53) x1_ack!2388))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2388)
                                   ((_ to_fp 11 53) x0_ack!2395))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
