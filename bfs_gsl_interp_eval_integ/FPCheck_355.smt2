(declare-fun x1_ack!4443 () (_ BitVec 64))
(declare-fun x0_ack!4447 () (_ BitVec 64))
(declare-fun x2_ack!4444 () (_ BitVec 64))
(declare-fun b_ack!4446 () (_ BitVec 64))
(declare-fun a_ack!4445 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4447) ((_ to_fp 11 53) x1_ack!4443)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4443) ((_ to_fp 11 53) x2_ack!4444)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4443)
                       ((_ to_fp 11 53) x0_ack!4447))
               ((_ to_fp 11 53) x0_ack!4447))
       ((_ to_fp 11 53) x1_ack!4443)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4443)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4443)
                       ((_ to_fp 11 53) x0_ack!4447)))
       ((_ to_fp 11 53) x0_ack!4447)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4444)
                       ((_ to_fp 11 53) x1_ack!4443))
               ((_ to_fp 11 53) x1_ack!4443))
       ((_ to_fp 11 53) x2_ack!4444)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4444)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4444)
                       ((_ to_fp 11 53) x1_ack!4443)))
       ((_ to_fp 11 53) x1_ack!4443)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4443)
                    ((_ to_fp 11 53) x0_ack!4447))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4444)
                    ((_ to_fp 11 53) x1_ack!4443))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4445) ((_ to_fp 11 53) b_ack!4446))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4445) ((_ to_fp 11 53) x0_ack!4447))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4446) ((_ to_fp 11 53) x2_ack!4444))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4445) ((_ to_fp 11 53) b_ack!4446))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4445) ((_ to_fp 11 53) x0_ack!4447))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4445) ((_ to_fp 11 53) x1_ack!4443))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4446) ((_ to_fp 11 53) x0_ack!4447))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4446) ((_ to_fp 11 53) x1_ack!4443))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4443)
                    ((_ to_fp 11 53) x0_ack!4447))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4445)
          ((_ to_fp 11 53) x0_ack!4447))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4446)
          ((_ to_fp 11 53) x0_ack!4447))))

(check-sat)
(exit)
