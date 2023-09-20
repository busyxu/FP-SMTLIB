(declare-fun b_ack!49 () (_ BitVec 64))
(declare-fun x_ack!50 () (_ BitVec 64))
(declare-fun a_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!50)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!49)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!50)
                    ((_ to_fp 11 53) b_ack!49))
            ((_ to_fp 11 53) a_ack!48))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!50)
                    ((_ to_fp 11 53) b_ack!49))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!50)
                    ((_ to_fp 11 53) b_ack!49))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!50)
                     ((_ to_fp 11 53) b_ack!49))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!48)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!48)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!50)
                     ((_ to_fp 11 53) b_ack!49)))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!48 #x7ff8000000000001))

(check-sat)
(exit)
