(declare-fun b_ack!135 () (_ BitVec 64))
(declare-fun x_ack!136 () (_ BitVec 64))
(declare-fun a_ack!134 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!136)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!135)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!136)
                    ((_ to_fp 11 53) b_ack!135))
            ((_ to_fp 11 53) a_ack!134))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!134) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!136)
                    ((_ to_fp 11 53) b_ack!135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!136)
                    ((_ to_fp 11 53) b_ack!135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!136)
                    ((_ to_fp 11 53) b_ack!135))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!136)
                    ((_ to_fp 11 53) b_ack!135))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!134)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!134) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!134)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!136)
                     ((_ to_fp 11 53) b_ack!135)))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!136)
          ((_ to_fp 11 53) b_ack!135))
  a_ack!134))

(check-sat)
(exit)
