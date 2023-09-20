(declare-fun x1_ack!5021 () (_ BitVec 64))
(declare-fun x0_ack!5028 () (_ BitVec 64))
(declare-fun x2_ack!5022 () (_ BitVec 64))
(declare-fun b_ack!5027 () (_ BitVec 64))
(declare-fun a_ack!5026 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5023 () (_ BitVec 64))
(declare-fun y1_ack!5024 () (_ BitVec 64))
(declare-fun y2_ack!5025 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5028) ((_ to_fp 11 53) x1_ack!5021)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5021) ((_ to_fp 11 53) x2_ack!5022)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5021)
                       ((_ to_fp 11 53) x0_ack!5028))
               ((_ to_fp 11 53) x0_ack!5028))
       ((_ to_fp 11 53) x1_ack!5021)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5021)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5021)
                       ((_ to_fp 11 53) x0_ack!5028)))
       ((_ to_fp 11 53) x0_ack!5028)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5022)
                       ((_ to_fp 11 53) x1_ack!5021))
               ((_ to_fp 11 53) x1_ack!5021))
       ((_ to_fp 11 53) x2_ack!5022)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5022)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5022)
                       ((_ to_fp 11 53) x1_ack!5021)))
       ((_ to_fp 11 53) x1_ack!5021)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5021)
                    ((_ to_fp 11 53) x0_ack!5028))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5022)
                    ((_ to_fp 11 53) x1_ack!5021))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5026) ((_ to_fp 11 53) b_ack!5027))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5026) ((_ to_fp 11 53) x0_ack!5028))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5027) ((_ to_fp 11 53) x2_ack!5022))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5026) ((_ to_fp 11 53) b_ack!5027))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5026) ((_ to_fp 11 53) x0_ack!5028))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5026) ((_ to_fp 11 53) x1_ack!5021)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5021) ((_ to_fp 11 53) a_ack!5026))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5027) ((_ to_fp 11 53) x1_ack!5021))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5027) ((_ to_fp 11 53) x2_ack!5022)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5022)
                    ((_ to_fp 11 53) x1_ack!5021))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5026)
                       ((_ to_fp 11 53) x1_ack!5021))
               ((_ to_fp 11 53) x1_ack!5021))
       ((_ to_fp 11 53) a_ack!5026)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5026)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5026)
                       ((_ to_fp 11 53) x1_ack!5021)))
       ((_ to_fp 11 53) x1_ack!5021)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5025)
                           ((_ to_fp 11 53) y1_ack!5024))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5022)
                                   ((_ to_fp 11 53) x1_ack!5021)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5024)
                           ((_ to_fp 11 53) y0_ack!5023))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5021)
                                   ((_ to_fp 11 53) x0_ack!5028)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5022)
                                   ((_ to_fp 11 53) x1_ack!5021))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5021)
                                   ((_ to_fp 11 53) x0_ack!5028))))))
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
                                   ((_ to_fp 11 53) x2_ack!5022)
                                   ((_ to_fp 11 53) x1_ack!5021))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5025)
                                   ((_ to_fp 11 53) y1_ack!5024))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5022)
                                   ((_ to_fp 11 53) x1_ack!5021)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
