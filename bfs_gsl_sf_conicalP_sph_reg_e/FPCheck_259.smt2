(declare-fun c_ack!1030 () (_ BitVec 64))
(declare-fun a_ack!1031 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1030) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1031 #xffffffff)))
(assert (not (= #xffffffff a_ack!1031)))
(assert (not (= #x00000000 a_ack!1031)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1030) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1030) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1030))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1030)
                       ((_ to_fp 11 53) c_ack!1030))
               ((_ to_fp 11 53) c_ack!1030))
       ((_ to_fp 11 53) c_ack!1030)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1030))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1030)
                       ((_ to_fp 11 53) c_ack!1030))
               ((_ to_fp 11 53) c_ack!1030))
       ((_ to_fp 11 53) c_ack!1030)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1030)
          ((_ to_fp 11 53) c_ack!1030))))

(check-sat)
(exit)
