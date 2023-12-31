(declare-fun a_ack!906 () (_ BitVec 32))
(declare-fun c_ack!905 () (_ BitVec 64))
(declare-fun b_ack!904 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!906 #x00000000)))
(assert (not (= #x00000000 a_ack!906)))
(assert (not (= #x00000001 a_ack!906)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!905) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!905) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!906 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!905) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!906)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!905) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!904) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!904) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!906))
(assert (bvslt #x00000003 a_ack!906))
(assert (bvslt #x00000004 a_ack!906))
(assert (bvslt #x00000005 a_ack!906))
(assert (bvslt #x00000006 a_ack!906))
(assert (bvslt #x00000007 a_ack!906))
(assert (bvslt #x00000008 a_ack!906))
(assert (bvslt #x00000009 a_ack!906))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4022000000000000)
          ((_ to_fp 11 53) b_ack!904))))

(check-sat)
(exit)
