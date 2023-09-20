(declare-fun x1_ack!2912 () (_ BitVec 64))
(declare-fun x0_ack!2919 () (_ BitVec 64))
(declare-fun x2_ack!2913 () (_ BitVec 64))
(declare-fun b_ack!2918 () (_ BitVec 64))
(declare-fun a_ack!2917 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2914 () (_ BitVec 64))
(declare-fun y1_ack!2915 () (_ BitVec 64))
(declare-fun y2_ack!2916 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2919) ((_ to_fp 11 53) x1_ack!2912)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2912) ((_ to_fp 11 53) x2_ack!2913)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2912)
                       ((_ to_fp 11 53) x0_ack!2919))
               ((_ to_fp 11 53) x0_ack!2919))
       ((_ to_fp 11 53) x1_ack!2912)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2912)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2912)
                       ((_ to_fp 11 53) x0_ack!2919)))
       ((_ to_fp 11 53) x0_ack!2919)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2913)
                       ((_ to_fp 11 53) x1_ack!2912))
               ((_ to_fp 11 53) x1_ack!2912))
       ((_ to_fp 11 53) x2_ack!2913)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2913)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2913)
                       ((_ to_fp 11 53) x1_ack!2912)))
       ((_ to_fp 11 53) x1_ack!2912)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2912)
                    ((_ to_fp 11 53) x0_ack!2919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2913)
                    ((_ to_fp 11 53) x1_ack!2912))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2917) ((_ to_fp 11 53) b_ack!2918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2917) ((_ to_fp 11 53) x0_ack!2919))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2918) ((_ to_fp 11 53) x2_ack!2913))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2917) ((_ to_fp 11 53) b_ack!2918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2917) ((_ to_fp 11 53) x0_ack!2919))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2917) ((_ to_fp 11 53) x1_ack!2912)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2912) ((_ to_fp 11 53) a_ack!2917))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2918) ((_ to_fp 11 53) x1_ack!2912))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2918) ((_ to_fp 11 53) x2_ack!2913))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2913)
                    ((_ to_fp 11 53) x1_ack!2912))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2916)
                           ((_ to_fp 11 53) y1_ack!2915))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2913)
                                   ((_ to_fp 11 53) x1_ack!2912)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2915)
                           ((_ to_fp 11 53) y0_ack!2914))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2912)
                                   ((_ to_fp 11 53) x0_ack!2919)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2913)
                                   ((_ to_fp 11 53) x1_ack!2912))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2912)
                                   ((_ to_fp 11 53) x0_ack!2919))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2913)
                                   ((_ to_fp 11 53) x1_ack!2912))))))
  (FPCHECK_FMUL_UNDERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
