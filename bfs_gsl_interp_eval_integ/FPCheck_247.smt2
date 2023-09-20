(declare-fun x1_ack!2960 () (_ BitVec 64))
(declare-fun x0_ack!2967 () (_ BitVec 64))
(declare-fun x2_ack!2961 () (_ BitVec 64))
(declare-fun b_ack!2966 () (_ BitVec 64))
(declare-fun a_ack!2965 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2962 () (_ BitVec 64))
(declare-fun y1_ack!2963 () (_ BitVec 64))
(declare-fun y2_ack!2964 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2967) ((_ to_fp 11 53) x1_ack!2960)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2960) ((_ to_fp 11 53) x2_ack!2961)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2960)
                       ((_ to_fp 11 53) x0_ack!2967))
               ((_ to_fp 11 53) x0_ack!2967))
       ((_ to_fp 11 53) x1_ack!2960)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2960)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2960)
                       ((_ to_fp 11 53) x0_ack!2967)))
       ((_ to_fp 11 53) x0_ack!2967)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2961)
                       ((_ to_fp 11 53) x1_ack!2960))
               ((_ to_fp 11 53) x1_ack!2960))
       ((_ to_fp 11 53) x2_ack!2961)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2961)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2961)
                       ((_ to_fp 11 53) x1_ack!2960)))
       ((_ to_fp 11 53) x1_ack!2960)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2960)
                    ((_ to_fp 11 53) x0_ack!2967))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2961)
                    ((_ to_fp 11 53) x1_ack!2960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2965) ((_ to_fp 11 53) b_ack!2966))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2965) ((_ to_fp 11 53) x0_ack!2967))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2966) ((_ to_fp 11 53) x2_ack!2961))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2965) ((_ to_fp 11 53) b_ack!2966))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2965) ((_ to_fp 11 53) x0_ack!2967))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2965) ((_ to_fp 11 53) x1_ack!2960)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2960) ((_ to_fp 11 53) a_ack!2965))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2966) ((_ to_fp 11 53) x1_ack!2960))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2966) ((_ to_fp 11 53) x2_ack!2961))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2961)
                    ((_ to_fp 11 53) x1_ack!2960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2964)
                           ((_ to_fp 11 53) y1_ack!2963))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2961)
                                   ((_ to_fp 11 53) x1_ack!2960)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2963)
                           ((_ to_fp 11 53) y0_ack!2962))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2960)
                                   ((_ to_fp 11 53) x0_ack!2967)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2961)
                                   ((_ to_fp 11 53) x1_ack!2960))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2960)
                                   ((_ to_fp 11 53) x0_ack!2967))))))
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
                                   ((_ to_fp 11 53) x2_ack!2961)
                                   ((_ to_fp 11 53) x1_ack!2960))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2965)
                    ((_ to_fp 11 53) x1_ack!2960))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2966)
                    ((_ to_fp 11 53) x1_ack!2960))))))))

(check-sat)
(exit)
