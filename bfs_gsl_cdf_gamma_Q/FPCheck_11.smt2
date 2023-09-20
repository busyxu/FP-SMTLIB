(declare-fun b_ack!90 () (_ BitVec 64))
(declare-fun x_ack!91 () (_ BitVec 64))
(declare-fun a_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!91)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!90)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!91)
                    ((_ to_fp 11 53) b_ack!90))
            ((_ to_fp 11 53) a_ack!89))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!91)
                    ((_ to_fp 11 53) b_ack!90))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!91)
                    ((_ to_fp 11 53) b_ack!90))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!91)
                     ((_ to_fp 11 53) b_ack!90))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!89)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!89)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!91)
                     ((_ to_fp 11 53) b_ack!90)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!91)
                    ((_ to_fp 11 53) b_ack!90))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!89)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a_ack!89))

(check-sat)
(exit)
