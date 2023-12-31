(declare-fun b_ack!1812 () (_ BitVec 64))
(declare-fun a_ack!1813 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1813) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1813) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1813) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1813) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1813) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) b_ack!1812))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1812))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1812)
                       ((_ to_fp 11 53) b_ack!1812))
               ((_ to_fp 11 53) b_ack!1812))
       ((_ to_fp 11 53) b_ack!1812)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1812))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1812)
                       ((_ to_fp 11 53) b_ack!1812))
               ((_ to_fp 11 53) b_ack!1812))
       ((_ to_fp 11 53) b_ack!1812)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1812)
          ((_ to_fp 11 53) b_ack!1812))))

(check-sat)
(exit)
