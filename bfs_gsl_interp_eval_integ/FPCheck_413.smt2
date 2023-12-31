(declare-fun x1_ack!5171 () (_ BitVec 64))
(declare-fun x0_ack!5178 () (_ BitVec 64))
(declare-fun x2_ack!5172 () (_ BitVec 64))
(declare-fun b_ack!5177 () (_ BitVec 64))
(declare-fun a_ack!5176 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5173 () (_ BitVec 64))
(declare-fun y1_ack!5174 () (_ BitVec 64))
(declare-fun y2_ack!5175 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5178) ((_ to_fp 11 53) x1_ack!5171)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5171) ((_ to_fp 11 53) x2_ack!5172)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5171)
                       ((_ to_fp 11 53) x0_ack!5178))
               ((_ to_fp 11 53) x0_ack!5178))
       ((_ to_fp 11 53) x1_ack!5171)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5171)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5171)
                       ((_ to_fp 11 53) x0_ack!5178)))
       ((_ to_fp 11 53) x0_ack!5178)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5172)
                       ((_ to_fp 11 53) x1_ack!5171))
               ((_ to_fp 11 53) x1_ack!5171))
       ((_ to_fp 11 53) x2_ack!5172)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5172)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5172)
                       ((_ to_fp 11 53) x1_ack!5171)))
       ((_ to_fp 11 53) x1_ack!5171)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5171)
                    ((_ to_fp 11 53) x0_ack!5178))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5172)
                    ((_ to_fp 11 53) x1_ack!5171))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) b_ack!5177))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) x0_ack!5178))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5177) ((_ to_fp 11 53) x2_ack!5172))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) b_ack!5177))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) x0_ack!5178))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) x1_ack!5171)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5171) ((_ to_fp 11 53) a_ack!5176))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5177) ((_ to_fp 11 53) x1_ack!5171))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5177) ((_ to_fp 11 53) x2_ack!5172)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5172)
                    ((_ to_fp 11 53) x1_ack!5171))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5176)
                       ((_ to_fp 11 53) x1_ack!5171))
               ((_ to_fp 11 53) x1_ack!5171))
       ((_ to_fp 11 53) a_ack!5176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5176)
                       ((_ to_fp 11 53) x1_ack!5171)))
       ((_ to_fp 11 53) x1_ack!5171)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5175)
                           ((_ to_fp 11 53) y1_ack!5174))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5172)
                                   ((_ to_fp 11 53) x1_ack!5171)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5174)
                           ((_ to_fp 11 53) y0_ack!5173))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5171)
                                   ((_ to_fp 11 53) x0_ack!5178)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5172)
                                   ((_ to_fp 11 53) x1_ack!5171))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5171)
                                   ((_ to_fp 11 53) x0_ack!5178))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5172)
                                   ((_ to_fp 11 53) x1_ack!5171))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5175)
                                   ((_ to_fp 11 53) y1_ack!5174))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5172)
                                   ((_ to_fp 11 53) x1_ack!5171)))
                   a!5)))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
