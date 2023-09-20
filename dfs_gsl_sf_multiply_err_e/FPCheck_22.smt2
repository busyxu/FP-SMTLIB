(declare-fun a_ack!117 () (_ BitVec 64))
(declare-fun c_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!117))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!116))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!116))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!117))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!117))
            (fp.abs ((_ to_fp 11 53) c_ack!116)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!117))
       (fp.abs ((_ to_fp 11 53) c_ack!116))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!117))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!117))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!117)
                       ((_ to_fp 11 53) c_ack!116))
               ((_ to_fp 11 53) a_ack!117))
       ((_ to_fp 11 53) c_ack!116)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!117)
                       ((_ to_fp 11 53) c_ack!116))
               ((_ to_fp 11 53) c_ack!116))
       ((_ to_fp 11 53) a_ack!117)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!117)
                  ((_ to_fp 11 53) c_ack!116)))))

(check-sat)
(exit)
