(declare-fun b_ack!2149 () (_ BitVec 64))
(declare-fun a_ack!2151 () (_ BitVec 32))
(declare-fun c_ack!2150 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2151 #x00000000)))
(assert (not (= #x00000000 a_ack!2151)))
(assert (not (= #x00000001 a_ack!2151)))
(assert (not (= #x00000002 a_ack!2151)))
(assert (not (= #x00000003 a_ack!2151)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!2150) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!2151))
(assert (bvsle #x00000005 a_ack!2151))
(assert (bvsle #x00000006 a_ack!2151))
(assert (bvsle #x00000007 a_ack!2151))
(assert (bvsle #x00000008 a_ack!2151))
(assert (bvsle #x00000009 a_ack!2151))
(assert (bvsle #x0000000a a_ack!2151))
(assert (bvsle #x0000000b a_ack!2151))
(assert (bvsle #x0000000c a_ack!2151))
(assert (bvsle #x0000000d a_ack!2151))
(assert (FPCHECK_FADD_OVERFLOW
  #x402a000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!2149))))

(check-sat)
(exit)
