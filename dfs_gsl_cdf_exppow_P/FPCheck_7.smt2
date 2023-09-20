(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun x_ack!38 () (_ BitVec 64))
(declare-fun b_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!38)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!36)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!38)
                    ((_ to_fp 11 53) a_ack!36))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_POW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!38)
          ((_ to_fp 11 53) a_ack!36))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!38)
          ((_ to_fp 11 53) a_ack!36))))

(check-sat)
(exit)
