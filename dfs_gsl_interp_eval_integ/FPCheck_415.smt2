(declare-fun x1_ack!5122 () (_ BitVec 64))
(declare-fun x0_ack!5129 () (_ BitVec 64))
(declare-fun x2_ack!5123 () (_ BitVec 64))
(declare-fun b_ack!5128 () (_ BitVec 64))
(declare-fun a_ack!5127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5124 () (_ BitVec 64))
(declare-fun y1_ack!5125 () (_ BitVec 64))
(declare-fun y2_ack!5126 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5129) ((_ to_fp 11 53) x1_ack!5122)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5122) ((_ to_fp 11 53) x2_ack!5123)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5122)
                       ((_ to_fp 11 53) x0_ack!5129))
               ((_ to_fp 11 53) x0_ack!5129))
       ((_ to_fp 11 53) x1_ack!5122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5122)
                       ((_ to_fp 11 53) x0_ack!5129)))
       ((_ to_fp 11 53) x0_ack!5129)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5123)
                       ((_ to_fp 11 53) x1_ack!5122))
               ((_ to_fp 11 53) x1_ack!5122))
       ((_ to_fp 11 53) x2_ack!5123)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5123)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5123)
                       ((_ to_fp 11 53) x1_ack!5122)))
       ((_ to_fp 11 53) x1_ack!5122)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5122)
                    ((_ to_fp 11 53) x0_ack!5129))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5123)
                    ((_ to_fp 11 53) x1_ack!5122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5127) ((_ to_fp 11 53) b_ack!5128))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5127) ((_ to_fp 11 53) x0_ack!5129))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5128) ((_ to_fp 11 53) x2_ack!5123))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5127) ((_ to_fp 11 53) b_ack!5128))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5127) ((_ to_fp 11 53) x0_ack!5129))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5127) ((_ to_fp 11 53) x1_ack!5122)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5122) ((_ to_fp 11 53) a_ack!5127))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5128) ((_ to_fp 11 53) x1_ack!5122))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5128) ((_ to_fp 11 53) x2_ack!5123)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5123)
                    ((_ to_fp 11 53) x1_ack!5122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5127)
                       ((_ to_fp 11 53) x1_ack!5122))
               ((_ to_fp 11 53) x1_ack!5122))
       ((_ to_fp 11 53) a_ack!5127)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5127)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5127)
                       ((_ to_fp 11 53) x1_ack!5122)))
       ((_ to_fp 11 53) x1_ack!5122)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5126)
                           ((_ to_fp 11 53) y1_ack!5125))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5123)
                                   ((_ to_fp 11 53) x1_ack!5122)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5125)
                           ((_ to_fp 11 53) y0_ack!5124))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5122)
                                   ((_ to_fp 11 53) x0_ack!5129)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5123)
                                   ((_ to_fp 11 53) x1_ack!5122))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5122)
                                   ((_ to_fp 11 53) x0_ack!5129))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
