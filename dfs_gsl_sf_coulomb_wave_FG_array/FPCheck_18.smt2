(declare-fun d_ack!114 () (_ BitVec 64))
(declare-fun b_ack!113 () (_ BitVec 32))
(declare-fun a_ack!116 () (_ BitVec 64))
(declare-fun c_ack!115 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!116)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!113))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!116)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!113))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!113))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!114) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!114)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) c_ack!115))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!116)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!113))
  #x3ff0000000000000))

(check-sat)
(exit)
