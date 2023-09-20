(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!31))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!31)
                       ((_ to_fp 11 53) b_ack!31))
               ((_ to_fp 11 53) b_ack!31))
       ((_ to_fp 11 53) b_ack!31)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!31))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!31)
                       ((_ to_fp 11 53) b_ack!31))
               ((_ to_fp 11 53) b_ack!31))
       ((_ to_fp 11 53) b_ack!31)))
(assert (FPCHECK_FADD_ACCURACY
  #x3e14c2029d5d2fb5
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!31)
                  ((_ to_fp 11 53) b_ack!31))
          ((_ to_fp 11 53) #x3d9d141fcb837472))))

(check-sat)
(exit)
